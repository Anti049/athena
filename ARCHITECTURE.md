# Architecture

## Presentation Layer

### Widgets

-   Things like:
    -   Screens
    -   Reusable components
    -   Controls
-   Should _NOT_ contain `state` management code
-   Observes the `state` for changes

### States

-   Current state of the `widget`
-   Examples:
    -   Library items
    -   Active filters
    -   Search query
    -   Current user
-   May require `models` to store the data
-   Is observed by the `widget` for changes

### Controllers

-   Separates business logic from UI code
-   Mediates between the `widget` and the `repository`
-   Emits the `state` for the `widget` to observe

## Domain Layer

Contains models for our data

### Models

-   At the very least, should hold all the properties needed by the `widget`
-   Simple classes that don't have access to `repositories`, `services`, or other objects _outside_ the domain layer
-   _CAN_ include comes business logic to express how they are meant to be modified
    -   E.g. a shopping cart that can add/remove items

## Data Layer

### Data Sources

-   3rd-party APIs used to communicate with the outside world
-   E.g.
    -   Remote database
    -   REST API client
    -   Push notification system
-   _Is an external dependency_

### DTOs (Data Transfer Objects)

-   Data objects returned by `data sources`
-   Often represented as unstructured data (such as JSON)
-   _Is an external dependency_

### Repositories

-   Used to access `DTOs` from various sources and make them available as type-safe `models`
-   Isolate `models` from the implementation details of the `data sources`
-   Convert `DTOs` to validated entities that are understood by the `domain layer`
-   _Optionally_ perform operations like data caching
-   When to use:
    -   Talking to REST APIs
    -   Talking to local/remote databases (e.g. Sembast, Hive, Firestore, etc.)
    -   Talking to device-specific APIs (e.g. permissions, camera, location, etc.)
-   Utilizes a `model` class for returning the requested data

## Application Layer (_Optional_)

### Service

-   Acts as a middle-man between `controllers` and `repositories`
-   Useful when writing logic that:
    -   Depends on multiple `data sources` or `repositories`
    -   Needs to be used by more than one `widget`
