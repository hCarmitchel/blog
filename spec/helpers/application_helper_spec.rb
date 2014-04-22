require 'spec_helper'

describe ApplicationHelper do
  describe '#active_tab' do
    before do
      controller.stub(controller_name: 'somecontroller')
    end

    context 'when controller is active' do
      it 'returns true' do
      end
    end

    context 'when controller is not active' do
      it 'returns true' do
      end
    end
  end
end
