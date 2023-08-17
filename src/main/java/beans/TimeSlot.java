package beans;

public class TimeSlot {
	private int timeSlotFee;

	public TimeSlot(int timeSlotFee) {
		super();
		this.timeSlotFee = timeSlotFee;
	}

	public TimeSlot() {
		super();
	}

	/**
	 * @return the timeSlotFee
	 */
	public int getTimeSlotFee() {
		return timeSlotFee;
	}

	/**
	 * @param timeSlotFee the timeSlotFee to set
	 */
	public void setTimeSlotFee(int timeSlotFee) {
		this.timeSlotFee = timeSlotFee;
	}
}
