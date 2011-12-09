#!/usr/bin/env ruby
# encoding: utf-8

require 'rubygems'
require 'prawn'
require "prawn/measurement_extensions"

pdf = Prawn::Document.new(:page_layout => :portrait, :page_size => 'A4') do

  # Let's use som colour
  stroke_color "C000C0"   # purple is nice
  fill_color "00FF00"     # but not in combination with green

  # Some shapes with various border widths
  stroke_rectangle [0, 200], 250, 175
  fill_rounded_rectangle [100, 300], 128, 128, 32

  line_width 10
  fill_and_stroke_circle [500, 500], 300
  
  # back to black
  fill_color "000000"
  
  # Some text with a given font positioned using natural measurements
  font "Courier"
  font_size 24 
  text_box "Lite text som positionerats med hjälp av 'mänskliga' mått", :at => [5.cm, 128.mm], :height => 1.dm, :width => 85.mm

  # Page numbering
  font_size 10
  number_pages "Sida <page> av <total>", :at => [bounds.right - 150, 0], :width => 150, :align => :right, :start_count_at => 1, :color => '808080', :page_filter => :all
end



pdf.render_file 'prawn.pdf'

system 'open prawn.pdf'