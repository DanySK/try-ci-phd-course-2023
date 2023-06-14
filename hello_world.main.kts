#!/usr/bin/env kotlin

import java.net.URL
val key = System.getenv("OMDB_API_KEY")
check(key.isNotEmpty())
URL("http://www.omdbapi.com/?apikey=${key}&t=avatar")
    .readText()
    .let(::println)
