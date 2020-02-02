package net.gh.shopping.util;

public class RuleList {

	private int operationOrder;
	private String logicalOperator;
	private String comparisonValue;

	public int getOperationOrder() {
		return operationOrder;
	}

	public void setOperationOrder(int operationOrder) {
		this.operationOrder = operationOrder;
	}

	public String getLogicalOperator() {
		return logicalOperator;
	}

	public void setLogicalOperator(String logicalOperator) {
		this.logicalOperator = logicalOperator;
	}

	public String getComparisonValue() {
		return comparisonValue;
	}

	public void setComparisonValue(String comparisonValue) {
		this.comparisonValue = comparisonValue;
	}

}
