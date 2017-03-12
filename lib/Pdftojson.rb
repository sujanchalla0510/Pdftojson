require "Pdftojson/version"
require "io/console"
require "pdf_reader"

module Pdftojson
  class Convert
    attr_reader :pdf, :text_file, :output_file, :json

    def initilize(pdf_file)
      @pdf = PDF::Reader.new(pdf_file)
      @text_file = "#{Dir.home}/Desktop/output.txt"
      @output_file = "#{Dir.home}/Desktop/output.json"
      @json = {}
    end

    def get_json
      generate_text_file
      generate_json
    end

    private

      def generate_text_file
        File.open(text_file, 'w') do |file|
          pdf.pages.each do |page|
            file.write(page)
          end
        end
      end

      def generate_json
        i = 0
        document = File.open(text_file, 'a+')
        document.each_line do |line|
          line = line.strip
          next if line.empty?
          next if line == ""

          if line == string.upcase
            json["title#{i}"] = line
          else
            json["data#{i}"] = line
            json.values.last.concat(line) if line[0] == string.downcase
          end
          i += 1
        end
        write_to_json(json)
      end

      def write_to_json(json)
        json_data = JSON.generate(json)
        File.open(output_file, 'w') { |file| file.write(json_data)}
      end
  end
end

