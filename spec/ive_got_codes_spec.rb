require_relative '../lib/ive_got_codes.rb'

describe 'PhoneNumber' do
  let(:phone_list) { PhoneNumbers.new }

  it 'should have an attribute all_numbers' do
    expect(phone_list.all_numbers).to include("(163) 940-4082")
    expect(phone_list.all_numbers).to include("1-636-698-3324")
    expect(phone_list.all_numbers).to include("606.548.6342")
  end

  context '#clean_area_codes' do
    subject { PhoneNumbers.new }

    xit { should respond_to(:clean_area_codes) }
    xit 'should return AN ARRAY of ONLY the area codes of the numbers' do
      expect(phone_list.clean_area_codes).to include("884", "238", "158", "172",
                                                     "540", "782", "657", "834",
                                                     "370", "200", "247", "556",
                                                     "960", "862", "810", "175",
                                                     "829", "633")
    end

    xit { should respond_to(:clean_without_area_codes) }
    xit 'should return an array of ONLY the phone number WITHOUT the area code' do
      expect(phone_list.clean_without_area_codes).to include("848.8759", "275-2358", "421.2305", "508-4776",
                                                             "032-8972","681-7735", "096.6714", "970-3122",
                                                            "641-9777", "016-7690")
    end

    xit 'should return all area_codes that occur exactly 5 times using an instance method frequency' do
      expect(phone_list.frequency(5).count).to eq(8)
      expect(phone_list.frequency(5)).to include({"924"=>5, "317"=>5, "857"=>5, "688"=>5, "674"=>5, "297"=>5, "551"=>5, "114"=>5})
    end

  end
end
