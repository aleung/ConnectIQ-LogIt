# Log It

A ConnectIQ widget for Garmin watch (currently: VivoActive3 / Music).

Log anything you need to do periodically, e.g. take medicine, feed your baby. Remind you the elapsed time since you last did it. 

The data is directly stored on the watch. It stores up to 10 records and old records will be removed.

## Use
Main Screen:
- Tap on the yellow button at the top to add a new log entry.
- Tap other space to show history

History Screen:

- Scroll up and down to see all ten entries
- Tap or swipe right to go back

## Screenshots
![VivoActive3 Main Screen](./screenshots/vivoactive3_Main.PNG)
![VivoActive3 Log Screen](./screenshots/vivoactive3_Log.PNG)

## Develop
- Install JDK8
- Install Garmin ConnectIQ SDK
- Create file `properties.mk` in project root. Follow the guide at https://github.com/danielsiwiec/garmin-connect-seed
- Run `make run` to run in simulator and `make deploy` to deploy on watch.

### Install JDK8 on macOS

```
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8
brew install jenv   # add follow the console output to setup your shell
```

Following instruction on https://github.com/jenv/jenv to setup `jenv` 

Set to use JDK8 in this project:

```
jenv local 1.8
```

## Credits
- Originate from the [BabyLog:Feed](https://github.com/tanstaaflFH/BabyLog-Feed-ConnectIQ) app made by [Falko Hegewald](fh.development@zoho.eu).
- Icons made by [Dave Gandy](https://www.flaticon.com/authors/dave-gandy)</a> from https://www.flaticon.com/
