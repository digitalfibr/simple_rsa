describe SimpleRSA do
  describe '::generate_keys_in' do
    context "./temp" do
      let(:path) { './tmp' }
      before(:each) { SimpleRSA.generate_keys_in path }

      it 'generates id_rsa' do
        File.exist?("./tmp/id_rsa").should == true
      end
    
      it 'generates id_rsa.pub' do
        File.exist?("./tmp/id_rsa.pub").should == true
      end
    end
  end
end