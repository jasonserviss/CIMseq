// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include "../inst/include/sp.scRNAseq.h"
#include <RcppArmadillo.h>
#include <Rcpp.h>

using namespace Rcpp;

// costFor
double costFor(const arma::vec& oneMultiplet, const arma::mat& singletSubset, const arma::vec& fractions, int n);
RcppExport SEXP _sp_scRNAseq_costFor(SEXP oneMultipletSEXP, SEXP singletSubsetSEXP, SEXP fractionsSEXP, SEXP nSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const arma::vec& >::type oneMultiplet(oneMultipletSEXP);
    Rcpp::traits::input_parameter< const arma::mat& >::type singletSubset(singletSubsetSEXP);
    Rcpp::traits::input_parameter< const arma::vec& >::type fractions(fractionsSEXP);
    Rcpp::traits::input_parameter< int >::type n(nSEXP);
    rcpp_result_gen = Rcpp::wrap(costFor(oneMultiplet, singletSubset, fractions, n));
    return rcpp_result_gen;
END_RCPP
}
// sampleSingletsArma
arma::uvec sampleSingletsArma(CharacterVector classes);
RcppExport SEXP _sp_scRNAseq_sampleSingletsArma(SEXP classesSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< CharacterVector >::type classes(classesSEXP);
    rcpp_result_gen = Rcpp::wrap(sampleSingletsArma(classes));
    return rcpp_result_gen;
END_RCPP
}
// subsetSingletsArma
arma::mat subsetSingletsArma(const arma::mat& singlets, const arma::uvec& idxToSubset);
RcppExport SEXP _sp_scRNAseq_subsetSingletsArma(SEXP singletsSEXP, SEXP idxToSubsetSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const arma::mat& >::type singlets(singletsSEXP);
    Rcpp::traits::input_parameter< const arma::uvec& >::type idxToSubset(idxToSubsetSEXP);
    rcpp_result_gen = Rcpp::wrap(subsetSingletsArma(singlets, idxToSubset));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_sp_scRNAseq_costFor", (DL_FUNC) &_sp_scRNAseq_costFor, 4},
    {"_sp_scRNAseq_sampleSingletsArma", (DL_FUNC) &_sp_scRNAseq_sampleSingletsArma, 1},
    {"_sp_scRNAseq_subsetSingletsArma", (DL_FUNC) &_sp_scRNAseq_subsetSingletsArma, 2},
    {NULL, NULL, 0}
};

RcppExport void R_init_sp_scRNAseq(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
