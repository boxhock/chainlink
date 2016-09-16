describe EthereumContractTemplate, type: :model do

  describe "validations" do
    it { is_expected.to have_valid(:code).when('a') }
    it { is_expected.not_to have_valid(:code).when('', nil) }

    it { is_expected.to have_valid(:construction_gas).when(1) }
    it { is_expected.not_to have_valid(:construction_gas).when(nil, 0, -1) }

    it { is_expected.to have_valid(:evm_hex).when('a') }
    it { is_expected.not_to have_valid(:evm_hex).when('', nil) }

    it { is_expected.to have_valid(:json_abi).when('a') }
    it { is_expected.not_to have_valid(:json_abi).when('', nil) }

    it { is_expected.to have_valid(:read_address).when('a') }
    it { is_expected.not_to have_valid(:read_address).when('', nil) }

    it { is_expected.to have_valid(:solidity_abi).when('a') }
    it { is_expected.not_to have_valid(:solidity_abi).when('', nil) }

    it { is_expected.to have_valid(:write_address).when('a') }
    it { is_expected.not_to have_valid(:write_address).when('', nil) }
  end

end