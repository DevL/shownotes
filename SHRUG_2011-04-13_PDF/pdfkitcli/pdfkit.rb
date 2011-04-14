#!/usr/bin/env ruby
# encoding: utf-8

require 'rubygems'
require 'pdfkit'

html = File.read('test.html')

# 1 - basic HTML to PDF
pdf = PDFKit.new(html, :page_size => 'A4')
pdf.to_file('pdfkit.pdf')
system 'open pdfkit.pdf'

# 2 - external stylesheet
pdf.stylesheets << 'W3C-REC.css'
pdf.to_file('pdfkit.pdf')
system 'open pdfkit.pdf'

# 3 - URL and in landscape orientation
pdf = PDFKit.new('http://www.sunet.se', :page_size => 'A4', :orientation => 'landscape')
# pdf.stylesheets << 'W3C-REC.css'  # error, not allowed for URLs
pdf.to_file('pdfkit.pdf')
system 'open pdfkit.pdf'
