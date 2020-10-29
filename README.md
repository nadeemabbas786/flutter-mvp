# flutter-mvp

This is a simple flutter application that helps to understanding the MVP design pattern in flutter app.

# MVP:

Similar to traditional MVC but Controller is replaced by Presenter. But the Presenter, unlike Controller is responsible for changing the view as well. The view usually does not call the presenter.

# MVP design pattern works:

1. View is the entry point to the application,

2. One to one mapping between View and Presenter,

3. View have the reference to the Presenter,

4. View is not aware of the Model.