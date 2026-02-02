#GC Content Calculation
gc_content <- function(sequence) {
  seq <- toupper(sequence)
  gc_count <- sum(strsplit(seq, "")[[1]] %in% c("G", "C"))
  return((gc_count / nchar(seq)) * 100)
}

# Examples
gc_content("GCATTTAT")
gc_content("gcaTTTAT")
#Protein Molecular Weight Calculator
protein_weight <- function(protein = "SAJANJEL") {

  aa_weights <- c(
    A = 89.09, R = 174.20, N = 132.12, D = 133.10,
    C = 121.15, E = 147.13, Q = 146.15, G = 75.07,
    H = 155.16, I = 131.18, L = 131.18, K = 146.19,
    M = 149.21, F = 165.19, P = 115.13, S = 105.09,
    T = 119.12, W = 204.23, Y = 181.19, V = 117.15
  )

  protein <- toupper(protein)
  aa_vector <- strsplit(protein, "")[[1]]

  if (!all(aa_vector %in% names(aa_weights))) {
    return(0)
  }

  total_weight <- sum(aa_weights[aa_vector])
  return(total_weight / 1000)
}

# Examples
protein_weight()
protein_weight("ACDE")
protein_weight("ABCD")
