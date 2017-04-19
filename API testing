RSpec.describe CarSearch do
  describe 'Get /api/vehicle/v2/makes' do
    it { is_expected.to have_http_stauts(:ok) }

      it 'will retrieve records' do
        expect(JSON.parse(response.body)).to.eql({"data" => [{
                                                  "makes" : {},
                                                  "makesCount" : {}
                                 }]
        })
    end
  end

  describe 'Get /api/vehicle/v2/models' do
    it { is_expected.to have_http_stauts(:ok) }

    it 'will retrieve records' do
      expect(JSON.parse(response.body)).to.eql({"data" => [{
                                                               "models" : {},
                                                              "modelsCount" : {}
      }]
      })
    end
  end

  describe 'Get /api/vehicle/v2/year' do
    it { is_expected.to have_http_stauts(:ok) }

    it 'will retrieve records' do
      expect(JSON.parse(response.body)).to.eql({"data" => [{
                                                               "year" : {},
                                                              "yearCount" : {}
      }]
      })
    end
  end
end
