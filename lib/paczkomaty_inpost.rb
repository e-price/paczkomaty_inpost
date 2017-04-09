# encoding: UTF-8
require 'paczkomaty_inpost/version'
require 'paczkomaty_inpost/string'
require 'paczkomaty_inpost/inpost_api'
require 'paczkomaty_inpost/request'
require 'paczkomaty_inpost/inpost_pack'
require 'paczkomaty_inpost/xml_generator'
require 'paczkomaty_inpost/io_adapters/file_adapter'


module PaczkomatyInpost

  def self.inpost_api_url(sandbox = nil)
    @inpost_api_url ||= if sandbox.present?
                          'http://sandbox-api.paczkomaty.pl'
                        else
                          'http://api.paczkomaty.pl'
                        end
  end
end
