shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Frequent Words Problem"),                
                sidebarPanel(
                        tags$head(
                            tags$style(type="text/css", "body {
                                                               background-color:#99ff66; }"),   
                            tags$style(type="text/css", ".doc {
                                                               background-color:#99ff66; }"),   
                            tags$style(type="text/css", ".shiny-text-output { 
                                                                  font-weight:bold;
                                                                  font-size:18px;
                                                                  background-color:#99ff66;
                                                                  color=#000000;}"), 
                            tags$style(type="text/css", ".span8 {                                                                 
                                                                 padding-left:10px;  
                                                                 padding-bottom:27px;                                                                
                                                                 padding-top:20px;}"),   
                            tags$style(type="text/css", ".well,.span8 { 
                                                                 border-color: black;
                                                                 border-style: solid;
                                                                 border-width: thin; 
                                                                 background-color:#33CC33;}"),   
                            tags$style(type="text/css", "label { display:block;font-weight:bold;font-size:18px;}"), 
                            tags$style(type="text/css", ".btn-primary {                                                                    
                                                                   font-weight:bold;                                                                   
                                                                   background:#009933;}"), 
                            tags$style(type="text/css", "textarea {
                                                                   display:block;
                                                                   border-color: black;
	                                                           border-style: solid;
	                                                           border-width: thin;
	                                                           padding: 3px;
                                                                   color:#000000;
                                                                   fontweight: bold;
                                                                   font-size:18px;
                                                                   background-color:#99ff66;
                                                                   width: 90%;
                                                                   max-width:450px;
                                                                  }"),        
                            tags$style(type="text/css", "input[type=number] { font-weight:bold;width: 30px; }")),
                        
                        h3('Input - K-mer Count'),
                        numericInput('kmerlength', 'K-mer Length', 4, min = 1, max = 10, step = 1),
                        HTML('<label for="nucleotide">Nucleotide </label>'),
                        HTML('<textarea id="nucleotide" rows="5" cols="1000">ACGTTGCATGTCGCATGATGCATGAGAGCT</textarea>'),                      
                        submitButton('Submit'),
                        HTML('<br /><br />'),
                        wellPanel(
                                HTML('<div id="doc"><pre>
Frequent Words Problem
# Find the most frequent k-mers in a string.
# Given: A DNA string Text and an integer k.
# Return: All most frequent k-mers in Text (in any order).

Simple pattern counting app not only for nucleotides.
Applied CSS is not optimized, but working.
Did this first in python, working in R now, too.
Have fun!
                                     </pre></div>')
                        )
                ),
                
                mainPanel(
                        h3('Result - K-mer Count'),
                        h4('K-mer Length'),
                        verbatimTextOutput("kmerlength"),
                        h4('Nucleotide'),
                        verbatimTextOutput("nucleotide"),
                        h4('Most frequent k-mers (last element = frequency):'),
                        verbatimTextOutput("result"),
                        HTML('<br /><br />'),
                        wellPanel(
                                HTML('<div id="doc"><pre>
This is the first problem of ROSALIND\'s Bioinformatics challenges.
see: <a href="http://rosalind.info/problems/1a/">http://rosalind.info/problems/1a/</a>

# A k-mer is a string of length k. We define Count(Text, Pattern) as the number 
# of times that a k-mer Pattern appears as a substring of Text. For example,
# Count(ACAACTATGCATACTATCGGGAACTATCCT,ACTAT)=3.
# We note that Count(CGATATATCCATAG, ATA) is equal to 3 (not 2) since we should 
# account for overlapping occurrences of Pattern in Text.
# We say that Pattern is a most frequent k-mer in Text if it maximizes 
# Count(Text, Pattern) among all k-mers. 
# For example, "ACTAT" is a most frequent 5-mer in "ACAACTATGCATCACTATCGGGAACTATCCT", 
# and "ATA" is a most frequent 3-mer of "CGATATATCCATAG".
                                        
                                     </pre></div>')
                                )
                )  
        )
)
