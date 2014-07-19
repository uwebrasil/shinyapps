library(stringr)
# returns most frequent k-mers
mf_kmer <- function(dna,k)
{
        ret <- list()
        # set up loop-vector
        c <- str_length(dna)-k
        # loop over dna, fetch all k-mers
        for (i in 1:c)
        {                                
                ret[i] = str_sub(dna,i,i+k-1)
        }      
        # sort result
        ret <- table(unlist(ret))
        ret <- rev(sort(ret))      
        # select most frequent
        m=max(ret)
        ret <- as.array(ret[ret==m])      
        c(rownames(ret),m)
}

shinyServer(
        function(input, output) {
                output$kmerlength <- renderPrint({input$kmerlength})                
                output$nucleotide <- renderPrint(input$nucleotide)
                output$result <- renderPrint({ mf_kmer(input$nucleotide,input$kmerlength) })                
        }
)
