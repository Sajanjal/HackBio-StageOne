# HackBio Internship – Stage 1

This repository contains my solution for Stage 1 of the HackBio Internship technical assessment.

---

## Task 1: GC Content Calculation

**Goal:**  
Calculate the GC percentage of a DNA sequence while handling both uppercase and lowercase characters.

**Implementation:**  
- Input sequence is converted to uppercase
- G and C nucleotides are counted
- GC percentage is calculated relative to total sequence length

---

## Task 2: Protein Molecular Weight Calculator

**Goal:**  
Compute the molecular weight of a protein sequence in kiloDaltons (kDa).

**Rules applied:**
- Accepts my name as default input
- Returns 0 if a non-protein character is detected
- Uses standard amino acid molecular weights

---

## Essay: Step-by-Step Approach (R)

To solve the protein molecular weight calculation task in R, I first created a named vector containing the molecular weights of the 20 standard amino acids. The one-letter amino acid codes were used as names to allow efficient lookup.

I then defined a custom function with my name as the default input. The protein sequence was converted to uppercase to ensure consistency. Using the `strsplit()` function, the protein was split into individual amino acids.

Before calculation, I validated the sequence by checking that all amino acids were present in the reference table. If an invalid amino acid was detected, the function returned 0.

Finally, I summed the molecular weights and converted the result from Daltons to kiloDaltons by dividing by 1000.

---

