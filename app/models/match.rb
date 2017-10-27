# class Match < ApplicationRecord
#   attr_reader :rounds
#
#              def initialize students
#                #
#                @rounds = {}
#
#                #
#                seed students
#              end
#              private
#              def seed students
#                # if there is an odd number of students, and empty number is added to the array
#                students.push(nil) if students.size.odd?
#                # because the first element is 'set' for the rest to rotate around,
#                # - we count the amount of element minus one. That amount is the number of rounds.
#                  rounds = students.size - 1
#                  # because we have an even number array, the matches per round is the number of students /2
#                  matches_per_round = students.size / 2
#                  # the number that the rounds-variable puts out, is the amount of times we do the action 'index'
#                  rounds.times do |index|
#                    #
#                    @rounds[index+1] = []
#                    #
#                    matches_per_round.times do |match_index|
#                      #
#                      @rounds[index+1] << [students[match_index], students.reverse[match_index]]
#                      #
#                    end
#                    #
#                    students = [students[0]] + students[1..-1].rotate(-1)
#                  end
#            end
#     end
#
#           # t = Match.new ["A", "B", "C", "D", "E", "F"]
#
#           # t.rounds
