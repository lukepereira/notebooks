# [Notebooks](https://lukepereira.github.io/notebooks)

## Contents

<!--
To add a new row to table, copy/update and prettify:

|
    _<doc_name>_
|
    <date>
|
    [\[pdf\]](https://lukepereira.github.io/notebooks/documents/<date>-<doc_name>/main.pdf)
    [\[md\]](documents/<date>-<doc_name>/main.md)
    [\[html\]](https://lukepereira.github.io/notebooks/documents/<date>-<doc_name>/index.html)
|
-->

| Computer Science                                | Date | Documents                                                                                                                                                                                                                                                                              |
| ----------------------------------------------- | ---- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| _Stochastic Modeling and Queuing Theory_        | 2020 | [\[pdf\]](https://lukepereira.github.io/notebooks/documents/2020-performance-analysis/main.pdf)                                                                                                                                                                                        |
| _Data Structures and Algorithms_                | 2020 | [\[pdf\]](https://lukepereira.github.io/notebooks/documents/2020-data-structures-and-algorithms/main.pdf) [\[md\]](documents/2020-data-structures-and-algorithms/main.md) [\[html\]](https://lukepereira.github.io/notebooks/documents/2020-data-structures-and-algorithms/index.html) |
| _Object-Oriented Programming & Design Patterns_ | 2020 | [\[pdf\]](https://lukepereira.github.io/notebooks/documents/2020-OOP-design-patterns/main.pdf) [\[md\]](documents/2020-OOP-design-patterns/main.md) [\[html\]](https://lukepereira.github.io/notebooks/documents/2020-OOP-design-patterns/index.html)                                  |
| _Distributed Systems Design and Concepts_       | 2020 | [\[pdf\]](https://lukepereira.github.io/notebooks/documents/2020-distributed-systems-design/main.pdf) [\[md\]](documents/2020-distributed-systems-design/main.md) [\[html\]](https://lukepereira.github.io/notebooks/documents/2020-distributed-systems-design/index.html)             |
| _SQL_                                           | 2020 | [\[pdf\]](https://lukepereira.github.io/notebooks/documents/2020-sql/main.pdf) [\[md\]](documents/2020-sql/main.md) [\[html\]](https://lukepereira.github.io/notebooks/documents/2020-sql/index.html)                                                                                  |
| _RSA Encryption Essay_                          | 2017 | [\[pdf\]](https://lukepereira.github.io/notebooks/documents/2017-rsa-essay/main.pdf) [\[md\]](documents/2017-rsa-essay/main.md) [\[html\]](https://lukepereira.github.io/notebooks/documents/2017-rsa-essay/index.html)                                                                |
| _Machine Learning Essay_                        | 2017 | [\[pdf\]](https://lukepereira.github.io/notebooks/documents/2017-machine-learning-essay/main.pdf) [\[md\]](documents/2017-machine-learning-essay/main.md) [\[html\]](https://lukepereira.github.io/notebooks/documents/2017-machine-learning-essay/index.html)                         |

<br />

| Math                                           |      |                                                                                                                                                                                                                                        |
| ---------------------------------------------- | ---- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| _Ergodic Theory_                               | 2020 | [\[pdf\]](https://lukepereira.github.io/notebooks/documents/2020-ergodic-theory/main.pdf) [\[md\]](documents/2020-ergodic-theory/main.md) [\[html\]](https://lukepereira.github.io/notebooks/documents/2020-ergodic-theory/index.html) |
| _Combinatorics_                                | 2020 | [\[pdf\]](https://lukepereira.github.io/notebooks/documents/2020-combinatorics/main.pdf) [\[md\]](documents/2020-combinatorics/main.md) [\[html\]](https://lukepereira.github.io/notebooks/documents/2020-combinatorics/index.html)    |
| _Chaos Essay_                                  | 2020 | [\[pdf\]](https://lukepereira.github.io/notebooks/documents/2020-chaos-essay/main.pdf) [\[md\]](documents/2020-chaos-essay/main.md) [\[html\]](https://lukepereira.github.io/notebooks/documents/2020-combinatorics/index.html)        |
| _Recursive Generating Functions HW_            | 2020 | [\[pdf\]](https://lukepereira.github.io/notebooks/documents/2020-combinatorics-generating-function/main.pdf)                                                                                                                           |
| _Markov Chains & Chaotic Symbolic Dynamics HW_ | 2020 | [\[pdf\]](https://lukepereira.github.io/notebooks/documents/2020-chaotic-systems/main.pdf)                                                                                                                                             |
| _Homework template_                            | 2020 | [\[pdf\]](https://lukepereira.github.io/notebooks/documents/homework-template/main.pdf)                                                                                                                                                |

---

## Continuous Integration Compilers

### LaTex

This repo compiles any modified .tex files and will commit the rendered .pdfs on push to remote using GitHub actions.

### Markdown Generation

The action will also converts any modified .tex files into a markdown document using `pandoc` and will commit the generated .md files on push.

### HTML Generation

The main html pages with inline Mathjax are generated by `pandoc`.

GitHub pages generates Jekyll webpage on path `<document-path>/main.html`
