# global describe, beforeEach, assert, it
"use strict"

describe 'Pin Model', ->
  beforeEach ->
    @Pin = new corks.Models.PinModel();
