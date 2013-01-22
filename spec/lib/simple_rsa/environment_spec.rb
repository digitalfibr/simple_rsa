describe SimpleRSA::Environment do
  before(:each) do
    SimpleRSA.generate_keys_in './tmp'
    File.open('./tmp/id_rsa', 'r') do |f|
      ENV['SIMPLE_ID_RSA'] = f.read
    end
    File.open('./tmp/id_rsa.pub', 'r') do |f|
      ENV['SIMPLE_ID_RSA_PUB'] = f.read
    end
  end
  
  it_behaves_like("a simple RSA") do
    let(:rsa) { described_class.new }
    subject { rsa }
  end
end