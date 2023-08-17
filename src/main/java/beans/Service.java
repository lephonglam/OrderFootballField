package beans;

public class Service {
	private int uniformFee;
	private int refereeFee;
	
	public Service() {
		super();
	}

	public Service(int uniformFee, int refereeFee) {
		super();
		this.uniformFee = uniformFee;
		this.refereeFee = refereeFee;
	}

	/**
	 * @return the uniformFee
	 */
	public int getUniformFee() {
		return uniformFee;
	}

	/**
	 * @param uniformFee the uniformFee to set
	 */
	public void setUniformFee(int uniformFee) {
		this.uniformFee = uniformFee;
	}

	/**
	 * @return the refereeFee
	 */
	public int getRefereeFee() {
		return refereeFee;
	}

	/**
	 * @param refereeFee the refereeFee to set
	 */
	public void setRefereeFee(int refereeFee) {
		this.refereeFee = refereeFee;
	}
}
