# Introduction

## In one sentence, please

**phoenix** is a Python library for implementing complex numerical operations efficiently. It takes operations expressed as arithmetic manipulations on array entries and compiles them into an external library (Fortran, CUDA, etc.), which is then reimported into Python for high performance.

## phoenix? Must be an acronym!

**phoenix** is an acronym for **P**arallel **H**ybrid **O**perations for **E**nhanced **N**umerical **I**mplementations and e**X**ecutions.

## Why should I use it?

The core idea is to separate _what_ you want to compute from _how_ it is implemented. Operations are first expressed abstractly with human-readable **keys** (via _keymaps_) instead of raw indices. From there, the library generates **instructions** that can be compiled into fast, low-level code. This hides the bookkeeping and allows you to focus on the structure of your problem.

## How to proceed from here

Originally developed for my work on Pauli subspace truncation, the library has grown into a general tool for managing large sets of sparse or structured numerical operations. If you want to understand the design choices in more detail, see the Background. For a hands-on start, check out the examples and tutorials.
