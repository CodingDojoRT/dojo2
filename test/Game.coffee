expect = require "expect.js"
Game = require "../src/Game"

describe 'game', ->

  instance = null

  beforeEach ->
    instance = new Game

  it 'should return the expected output for input 123456789', ->
    expectedOutput = "Original number was 123456789\n"+
                    "987654321 - 123456789 = 864197532\n" +
                    "987654321 - 123456789 = 864197532\n" +
                    "Chain length 2"

    receivedOutput = instance.chain '123456789'
    expect(receivedOutput).to.eql expectedOutput

  it 'should return the expected output for input 0', ->
    expectedOutput = "Original number was 0\n"+
                     "0 - 0 = 0\n" +
                     "0 - 0 = 0\n" +
                     "Chain length 2"

    receivedOutput = instance.chain '0'
    expect(receivedOutput).to.eql expectedOutput

  it 'should return the expected output for input 5', ->
    expectedOutput = "Original number was 5\n"+
                     "5 - 5 = 0\n" +
                     "0 - 0 = 0\n" +
                     "Chain length 2"

    receivedOutput = instance.chain '5'
    expect(receivedOutput).to.eql expectedOutput

  it 'should return the expected output for input 66', ->
    expectedOutput = "Original number was 66\n"+
                     "66 - 66 = 0\n" +
                     "0 - 0 = 0\n" +
                     "Chain length 2"

    receivedOutput = instance.chain '66'
    expect(receivedOutput).to.eql expectedOutput

  it 'should return the expected output for input 12', ->
    expectedOutput = "Original number was 12\n"+
                     "21 - 12 = 9\n" +
                     "9 - 9 = 0\n" +
                     "0 - 0 = 0\n" +
                     "Chain length 3"

    receivedOutput = instance.chain "12"
    expect(receivedOutput).to.eql expectedOutput

  it 'should return the expected output for input 69', ->
    expectedOutput = "Original number was 69\n"+
                     "96 - 69 = 27\n" +
                     "72 - 27 = 45\n" +
                     "54 - 45 = 9\n" +
                     "9 - 9 = 0\n" +
                     "0 - 0 = 0\n" +
                     "Chain length 5"

    receivedOutput = instance.chain '69'
    expect(receivedOutput).to.eql expectedOutput

  it 'should return the expected output for input 3399', ->
    expectedOutput = "Original number was 3399\n"+
                     "9933 - 3399 = 6534\n" +
                     "6543 - 3456 = 3087\n" +
                     "8730 - 0378 = 8352\n" +
                     "8532 - 2358 = 6174\n" +
                     "7641 - 1467 = 6174\n" +
                     "Chain length 5"

    receivedOutput = instance.chain '3399'
    expect(receivedOutput).to.eql expectedOutput

  it 'should return the expected output for input 339966', ->
    expectedOutput = "Original number was 339966\n"+
                      "996633 - 336699 = 659934\n"+
                      "996543 - 345699 = 650844\n"+
                      "865440 - 044568 = 820872\n"+
                      "887220 - 022788 = 864432\n"+
                      "864432 - 234468 = 629964\n"+
                      "996642 - 246699 = 749943\n"+
                      "997443 - 344799 = 652644\n"+
                      "665442 - 244566 = 420876\n"+
                      "876420 - 024678 = 851742\n"+
                      "875421 - 124578 = 750843\n"+
                      "875430 - 034578 = 840852\n"+
                      "885420 - 024588 = 860832\n"+
                      "886320 - 023688 = 862632\n"+
                      "866322 - 223668 = 642654\n"+
                      "665442 - 244566 = 420876\n"+

                     "Chain length 15"

    receivedOutput = instance.chain '339966'
    expect(receivedOutput).to.eql expectedOutput