# frozen_string_literal: true

# You work for a bank, which has recently purchased an ingenious machine to assist in reading letters and faxes sent in by branch offices. The machine scans the paper documents, and produces a file with a number of entries which each look like this:

require 'dress_to_work'

describe DressCode do
  context 'Dress Sequence ' do
    subject { DressCode.new }

    it 'get ready with sock and hat' do
      num = '5 1'
      expect(subject.dressup(num)).to eq 'socks, fail'
    end

    it 'get ready with shoes and hat' do
      num = '4 1'
      expect(subject.dressup(num)).to eq 'fail'
    end

    it 'dress up without hat and leave' do
      num = '5 2 3 4 6'
      expect(subject.dressup(num)).to eq 'socks, pants, shirt, shoes, leave'
    end

    it 'dress up and leave' do
      num = '5 2 3 4 1 6'
      expect(subject.dressup(num)).to eq 'socks, pants, shirt, shoes, hat, leave'
    end
  end
end
