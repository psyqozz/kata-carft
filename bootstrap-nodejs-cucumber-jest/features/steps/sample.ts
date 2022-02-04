import { When, Then, Given } from 'cucumber'
import { expect } from 'chai'
import { sampleGame, spareGame } from '../../src/sampleGame'

Given('the player score {string}', function(rolls: string){
  this.rolls = rolls;
})

When('we finish the game', function () {
    this.score = sampleGame(this.rolls);
})

Then('the total is {int}', function (score: number) {
  expect(this.score).to.equals(score)
})

Given('the player score {string}', function(rolls: string){
  this.rolls = rolls;
})

When('we finish the game', function () {
    this.score = spareGame(this.rolls);
})

Then('the total is {int}', function (score: number) {
  expect(this.score).to.equals(score)
})


