should = require 'should'
assert = require 'assert'
probe = require('..').probe(require './ext/transport')

describe 'probe', ->

  before ->
  after ->
  beforeEach ->
  afterEach ->

  it 'create metric', ( done ) ->
    metric = probe.metric
      name : 'test'
      value : -> 0
    done()
    

  it 'create counter metric', ( done ) ->
    counter = 0
    metric = probe.metric
      name : 'counter'
      value : -> counter

    _done = false 
    timer = setInterval -> 
      counter++
      if counter > 50 and not _done
        done()
        _done = true
    , 100
    timer.unref()


