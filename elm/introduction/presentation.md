# Elm Introduction

???

# Agenda
1. Introduction
2. Tips & Tricks
3. Best practices
4. Workshop

---
[live](http://localhost:8000/src/Greeting/Zero.elm)
<pre class="sample">samples/src/Greeting/Zero.elm</pre>

---

[live](http://localhost:8000/src/Greeting/One.elm)
<pre class="sample">samples/src/Greeting/One.elm</pre>

---

<pre class="sample">samples/snippet/inference0.elm</pre>

---

<pre class="sample">samples/snippet/inference1.elm</pre>

---

<pre class="sample">samples/snippet/inference2.elm</pre>

---

## Core Types

### Literal
* `Int` `37`
* `Float` `3.141592653`
* `Char` `'b'`
* `String` `"Hello, World!"`
* `Boolean` `True`
* `List a` `[1, 2, 3]`

---

## Core Types

### Algebraic Datatypes

#### Record

<pre class="sample">samples/snippet/types0.elm</pre>

#### Variants

<pre class="sample">samples/snippet/types1.elm</pre>

---

## Elm Architecture

[live](http://localhost:8000/src/Greeting/Three.elm)
* **Model** — the state of your application
* **View** — a way to turn your state into HTML
* **Update** — a way to update your state based on messages

---

<pre class="sample">samples/snippet/update0.elm</pre>

---

<pre class="sample">samples/snippet/update1.elm</pre>

---

<pre class="sample">samples/snippet/update2.elm</pre>

---

<pre class="sample">samples/snippet/modelling0.elm</pre>

---

<pre class="sample">samples/snippet/modelling1.elm</pre>

---

<pre class="sample">samples/snippet/modelling2.elm</pre>

<pre class="sample">samples/snippet/modelling2a.elm</pre>

---

[live](http://localhost:8000/src/Greeting/Four.elm)
<pre class="sample">samples/snippet/modelling3.elm</pre>

---

<pre class="sample">samples/snippet/modelling4.elm</pre>

---

<pre class="sample">samples/snippet/modelling5.elm</pre>

---

<pre class="sample">samples/snippet/modelling6.elm</pre>

---

<pre class="sample">samples/snippet/modelling7.elm</pre>

---

## Browser

* Sandbox
* Element
* Document
* Application

---

## Outside World

* Commands
* Subscriptions

---

## Signature Changes

[live](http://localhost:8000/src/Greeting/Five.elm)

<pre class="sample">samples/snippet/signature0.elm</pre>

<pre class="sample">samples/snippet/signature1.elm</pre>

<pre class="sample">samples/snippet/signature2.elm</pre>

---

## Subscription

[live](http://localhost:8000/src/Greeting/Six.elm)

<pre class="sample">samples/snippet/subscription0.elm</pre>

---

## Command

[live](http://localhost:8000/src/Greeting/Seven.elm)

<pre class="sample">samples/snippet/command0.elm</pre>

---

## Modules

### Definition

<pre class="sample">samples/snippet/module0.elm</pre>

--

<pre class="sample">samples/snippet/module1.elm</pre>

---

## Modules

### Usage

<pre class="sample">samples/snippet/module2.elm</pre>

--

<pre class="sample">samples/snippet/module3.elm</pre>

<pre class="sample">samples/snippet/module4.elm</pre>

<pre class="sample">samples/snippet/module5.elm</pre>

---

## Tips & Tricks

* `elm-format`
* `elm-test`
* [packages](https://package.elm-lang.org/)
* Time travelling debugger

---

## Further Study

### Reading

* [Elm Guide](https://guide.elm-lang.org/)
* [Elm in Action](https://www.manning.com/books/elm-in-action)

### Watching

* [Life of a File](https://www.youtube.com/watch?v=XpDsk374LDE)
* [Making Impossible States Impossible](https://www.youtube.com/watch?v=IcgmSRJHu_8)

### Asking

* [Community](https://elm-lang.org/community)
