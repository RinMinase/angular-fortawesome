<h1 align="center"> Angular Fortawesome Dependencies </h1>

<p align="center">
    <a href="https://circleci.com/gh/RinMinase/ng-fortawesome">
        <img alt="Circle-CI" src="https://img.shields.io/circleci/build/github/RinMinase/ng-fortawesome/master.svg?logo=circleci&style=for-the-badge">
    </a>&nbsp;
    <a href="https://semantic-release.gitbook.io/semantic-release/">
        <img alt="Semantic-Release" src="https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg?style=for-the-badge">
    </a>
</p>
<p align="center">
    <a href="https://bundlephobia.com/result?p=@rinminase/ng-fortawesome">
        <img alt="Bundle-Phobia" src="https://img.shields.io/bundlephobia/minzip/@rinminase/ng-fortawesome?logo=webpack&logoColor=white&style=for-the-badge">
    </a>&nbsp;
    <a href="https://www.npmjs.com/package/@rinminase/ng-fortawesome">
        <img alt="NPM-DM" src="https://img.shields.io/npm/dw/@rinminase/ng-fortawesome?logo=npm&style=for-the-badge">
    </a>
</p>

## Introduction

Reduce your project dependencies when using `@fortawesome/angular-fontawesome`.

This library removes `svg-core` as its peer dependency. This also includes imports for `brand`, `regular` and `solid` icons.

## Versions used

| Dependencies              | Version  |  Import Shorthand  |
| ------------------------- | -------- | ------------------ |
| `angular-fontawesome`     | v0.6.0   |                    |
| `fontawesome-svg-core`    | v1.2.27  |                    |
| `free-brands-svg-icons`   | v5.12.1  |     fab<Icon>      |
| `free-regular-svg-icons`  | v5.12.1  |     fa<Icon>       |
| `free-solid-svg-icons`    | v5.12.1  |     fas<Icon>      |

## Usage & Demo


### Installation

1. You can install ***ng-fortawesome*** using npm

    ```bash
    npm install @rinminase/ng-fortawesome
    ```

2. Add it on your module, like so

    ```typescript
    import { FontAwesomeModule } from "@rinminase/ng-fortawesome";

    @NgModule({
      imports: [
        ...,
        FontAwesomeModule,
      ]
    })
    ```

3. Declare it in your component, like so

  ```typescript
  import { fasPlus, faEdit, fabGithub } from "@rinminase/ng-fortawesome";

  export class SomeComponent implements OnInit {
    fasPlus = fasPlus;
    faEdit = faEdit;
    fabGithub = fabGithub;

    onInit() {
        ...
    }
  }
  ```

4. Use it on your template, like so

  ```html
  <fa-icon [icon]="fasPlus"></fa-icon>
  <fa-icon [icon]="faEdit"></fa-icon>
  <fa-icon [icon]="fabGithub"></fa-icon>
  ```

## FAQ

### Why re-create this library when there is already an existing one?

- The existing library doesn't seem to remove `svg-core` as its peer dependency, but needs it for both `brands-svg`, `regular-svg` and `solid-svg`. I seem to see the need to remove the additional library installed for your project and have this library install it instead

  Instead of:

  ```npm install @fortawesome/angular-fontawesome @fortawesome/fontawesome-svg-core @fortawesome/free-brands-svg-icons @fortawesome/free-regular-svg-icons @fortawesome/free-solid-svg-icons```

  I wanted to do it this way:

  ```npm install @rinminase/ng-fortawesome```

  Which only adds one dependencies to your project.

### Will this library be updated when any of its dependencies updates?

- Yes. This is updated whenever `angular-fontawesome`, `brands-svg`, `regular-svg`, `solid-svg` or `svg-core` updates.

## Built with
* <img width=20 height=20 src="https://angular.io/assets/images/favicons/favicon.ico"> [Angular 9](https://angular.io/) - Library setup
* <img width=20 height=20 src="https://www.typescriptlang.org/assets/images/icons/favicon-32x32.png"> [TypeScript](https://www.typescriptlang.org/) - Language syntax
* <img width=20 height=20 src="https://nodejs.org/static/images/favicons/favicon-32x32.png"> [NodeJS](https://nodejs.org/) - Environment
* <img width=20 height=20 src="https://dmmj3mmt94rvw.cloudfront.net/favicon-undefined.ico"> [Circle CI](https://circleci.com/) - Continuous Integration (CI) service
* <img width=20 height=20 src="https://blobscdn.gitbook.com/v0/b/gitbook-28427.appspot.com/o/spaces%2F-LGsE7zdvzHI5cG-XV6p%2Favatar.png?alt=media"> [Semantic Release📦🚀](https://semantic-release.gitbook.io/) - Releasing strategy
