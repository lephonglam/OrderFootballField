package beans;

public class CustomerOrder {
	private String customerName;
	private String phone;
	private int numberTeam;
	private int numberPlayer;
	private double times;
	private String periodic;
	private int fieldId;
	
	public CustomerOrder() {
		super();
	}

	public CustomerOrder(String customerName, String phone, int numberTeam, int numberPlayer, double times,
			String periodic, int fieldId) {
		super();
		this.customerName = customerName;
		this.phone = phone;
		this.numberTeam = numberTeam;
		this.numberPlayer = numberPlayer;
		this.times = times;
		this.periodic = periodic;
		this.fieldId = fieldId;
	}

	/**
	 * @return the customerName
	 */
	public String getCustomerName() {
		return customerName;
	}

	/**
	 * @param customerName the customerName to set
	 */
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}

	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

	/**
	 * @return the numberTeam
	 */
	public int getNumberTeam() {
		return numberTeam;
	}

	/**
	 * @param numberTeam the numberTeam to set
	 */
	public void setNumberTeam(int numberTeam) {
		this.numberTeam = numberTeam;
	}

	/**
	 * @return the numberPlayer
	 */
	public int getNumberPlayer() {
		return numberPlayer;
	}

	/**
	 * @param numberPlayer the numberPlayer to set
	 */
	public void setNumberPlayer(int numberPlayer) {
		this.numberPlayer = numberPlayer;
	}

	/**
	 * @return the times
	 */
	public double getTimes() {
		return times;
	}

	/**
	 * @param times the times to set
	 */
	public void setTimes(double times) {
		this.times = times;
	}

	/**
	 * @return the periodic
	 */
	public String getPeriodic() {
		return periodic;
	}

	/**
	 * @param periodic the periodic to set
	 */
	public void setPeriodic(String periodic) {
		this.periodic = periodic;
	}

	/**
	 * @return the fieldId
	 */
	public int getFieldId() {
		return fieldId;
	}

	/**
	 * @param fieldId the fieldId to set
	 */
	public void setFieldId(int fieldId) {
		this.fieldId = fieldId;
	}
}
