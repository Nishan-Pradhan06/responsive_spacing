## [1.1.4] - 2025-05-27
### Added
- **ResponsiveSpacingProvider**: Provides a global spacing scale based on a base unit and scaling factor.
- **ResponsiveSpacer**: A widget to insert vertical or horizontal space using a responsive scale (`xs`, `sm`, `md`, `lg`, `xl`).
- `context.spacing`: Extension on `BuildContext` to access spacing values dynamically.

## [1.1.3] - 2025-05-09
### Fixed
- Improved documentation.

## [1.1.2] - 2024-11-04
### Initial Release
- Released the **Responsive Spacing** package with the following features:
  - **ResponsivePadding**: A widget that automatically adjusts padding around a child widget based on the screen size.
    - Introduced `smallScreenPadding` and `largeScreenPadding` properties for easy customization.
  - **ResponsiveMargin**: A widget that automatically adjusts margin around a child widget based on the screen size.
    - Introduced `smallScreenMargin` and `largeScreenMargin` properties for flexible spacing control.
