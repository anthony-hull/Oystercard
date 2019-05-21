describe 'Tapping in and out' do
  let(:oystercard) {Oystercard.new}
  let(:bank_dbl) {double("station", name: "Bank")}
  xit 'tap out without tapping in' do
    oystercard.top_up(9000)
    expect{oystercard.tap_out(bank_dbl)}.to change{oystercard.balance}.by(-600)
  end
end