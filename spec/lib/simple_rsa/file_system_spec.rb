describe SimpleRSA::FileSystem do
  let(:path) { './tmp'}
  before(:each) { SimpleRSA.generate_keys_in path }
  
  it_behaves_like("a simple RSA") do
    let(:rsa) { described_class.new path }
    subject { rsa }
  end
end