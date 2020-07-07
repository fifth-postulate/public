# Introduction to Elm
This presentation will be held for the Dynamo team. It will serve as an introduction to [Elm][elm].

## Serving the presentation
The presentation relies on [remark][]. It needs to be served from a webserver. The following command serves it from python.

### python 2

```sh
python -m SimpleHTTPServer 35633
```

### python 3

```sh
python3 -m http.server 35633
```

You can now open it on [`http://localhost:35633`](http://localhost:35633)

## Serving Elm project
In order to serve the Elm projects run the following command from the `samples` directory.

```sh
elm reactor
```

[elm]: https://elm-lang.org/ 
[remark]: https://github.com/gnab/remark 