require 'json'

def read_file
  file = File.read('./file.json')
  data_hash = JSON.parse(file)
  memo = Hash.new({})

  data_hash.each do |token_data|
    # Get limit here, how to handle retries?
    # Perhaps do next if already migrated?
    memo[token_data['newReferenceId']] = token_data
  end

  memo.keys
end

p read_file
