# frozen_string_literal: true

require 'dress_state'

describe DressState do
  subject { DressState.new(args) }
  context 'curent state contexts' do
    let(:args) { :shoes }
    it 'checks prerequisites for shoes task' do
      expect(subject.id).to match_array([5, 2])
    end
  end

  context 'hat contexts' do
    let(:args) { 'hat' }
    it 'checks prerequisites for hat task' do
      expect(subject.id).to match_array([2, 3, 4, 5])
    end
  end

  context 'leave contexts' do
    let(:args) { 'leave' }
    it 'checks prerequisites for leave task' do
      expect(subject.id).to match_array([2, 3, 4, 5])
    end
  end
end
