# global describe, beforeEach, assert, it
"use strict"

describe 'Pin Router', ->
  beforeEach ->
    @Pin = new corks.Routers.PinRouter();

  it 'index route', ->

