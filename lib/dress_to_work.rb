# frozen_string_literal: true
require File.expand_path('lib/dress_state.rb')

class DressCode

  def dressup(ids)
    ref = []
    completed = []
    go_work = []

    # convert the string into array of integers
    task_ids = ids.delete(' ').split('').map(&:to_i)

    task_ids.each_with_index do |id, _i|
      # Append the completed tasks
      completed << id

      # get the prior tasks
      ref = DressState.new(duty[id])

      # check the current task in completed tasks list
      go_work << if (ref.id - completed).empty?
                   duty[id]
                 else
                   :fail
                end

      # exit the loop on fail
      break if go_work[-1] == :fail
    end

    # compile the list together
    go_work.join(', ')
  end

  def duty
    {
      1 => :hat,
      2 => :pants,
      3 => :shirt,
      4 => :shoes,
      5 => :socks,
      6 => :leave
    }
  end
end
