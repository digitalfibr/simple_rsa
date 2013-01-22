shared_examples "a simple RSA" do
  it { should be_kind_of(SimpleRSA::Base) }

  describe 'first #encrypt' do
    let(:secret_message) { 'Hello secret world' }
    let(:encryption) { rsa.encrypt secret_message }
    subject { encryption }

    it { should be_a(String) }
    it { should_not == secret_message }

    describe 'then #decrypt' do
      let(:decryption) { rsa.decrypt encryption }
      subject { decryption }

      it { should == secret_message }
    end
  end
end