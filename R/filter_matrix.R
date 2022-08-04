#' Function to filter matrix to an cutoff value
#'
#' @param x A subset of the expression matrix from species x genes
#' @param cutoff  A default cutoff value set to 0
#'
#' @return A ComplexHeatmap object
#' @export
#'
#' @examples
#' # create a xpression matrix
#' expresion_genes <- matrix(rnorm(100), nrow = 10)
#' rownames(expresion_genes) <- paste0("gene_",letters[1:10])
#' colnames(expresion_genes) <- paste0("especie_",letters[1:10])
#'
#' subset_heatmap(expresion_genes,
#' especies = c("especie_a", "especie_b","especie_c")
#'
#'

filter_matrix <- function(x, cutoff = 0) {
	filter_x <- x

	filter_x[filter_x <= cutoff] = NA

	# plot heatmap

	ComplexHeatmap::Heatmap(filter_x,
													cluster_columns = FALSE,
													cluster_rows = FALSE,
													heatmap_legend_param = list(title="log2"))

}

