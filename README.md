# newsletter
Newsletter builder setup using NodeJS/Grunt

## Building the newsletter
Start by installing the necessary stuff (just once)
```
npm install
```

Then you can build with
```
grunt
```
## Note on Windows
Haven't gotten this to work on Windows. So building should be done server side on Linux.

## Note on NodeJS Version
The email builder package doesn't seem to work with NodeJS 0.12.x. Use 0.10.x, preferably via [NVM](https://github.com/creationix/nvm).
