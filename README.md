# Developer Docs

[Docs](https://smartsupp.github.io/docs/) for [Smartsupp.com](https://www.smartsupp.com/) chat box. 

## Run Docs locally

1. Clone repo.
2. Select [develop](https://github.com/smartsupp/smartsupp.github.io/tree/develop) branch.
3. You can run Docs with [Jekyll](https://jekyllrb.com/) server or via Docker. 

### Jekyll

```
make jekyll
```

Then use: <http://127.0.0.1:4002>

### Docker

```
make up
make down
```

Then use: <http://0.0.0.0:4002/>

## Deployment

[Docs](https://smartsupp.github.io/docs/) deploy on *GitHub Pages* automatically each time [master](https://github.com/smartsupp/smartsupp.github.io/tree/master) branch is updated.

## Contributing

1. Clone repo if you did not do it yet.
2. Select [develop](https://github.com/smartsupp/smartsupp.github.io/tree/develop) branch.
3. Create `feature` branch from `develop` => `git checkout -b feature/name_you_choose`.
4. Update content.
5. Commit changes and push feature branch to GitHub.
6. Create pull request.

## License

See the [LICENSE](LICENSE.md) file for license rights and limitations (MIT).

## Copyright

Copyright (c) 2020 [smartsupp.com](https://www.smartsupp.com/)
