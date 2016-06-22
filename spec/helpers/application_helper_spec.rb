require 'rails_helper'

describe ApplicationHelper do
  context '#controller_has_js_asset?' do
    it 'returns true when asset exists' do
      allow_any_instance_of(Sprockets::CachedEnvironment).to receive(:find_asset).and_return(double)

      expect(helper.controller_has_js_asset?).to be_truthy
    end
    
    it 'returns false when asset does not exist' do
      allow_any_instance_of(Sprockets::CachedEnvironment).to receive(:find_asset).and_return(nil)

      expect(helper.controller_has_js_asset?).to be_falsy
    end
  end
end
