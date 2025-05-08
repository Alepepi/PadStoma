# PadStoma

This project uses **SwiftLint** and **SwiftFormat** to maintain consistent code quality and style. In case the Continuous Integration (CI) fails due to linting or formatting issues, you can manually run these tools to fix them.

## Running SwiftLint

**SwiftLint** is used to enforce Swift style and conventions.

To run **SwiftLint** and check for any violations, use the following command:

```bash
swiftlint --strict
```

## Running SwiftFormat to format all files

```bash
swiftformat .
```

## Running SwiftFormat to check without changing files

```bash
swiftformat . --lint --swiftversion 6.4
```

All these comands needs to run at the root of the project.