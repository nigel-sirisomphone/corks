# global describe, beforeEach, assert, it
"use strict"

describe 'Pins Collection', ->
  beforeEach ->
    @Pins = new corks.Collections.PinsCollection()
