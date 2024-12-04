package kr.ac.workproject.model;

public class Contract {
	private String contractId;
	private String buyerId;
	private String vendorId;
	private String buyerComname;
	private String vendorComname;
	private String workNum;
	private String matNum;
	private Long buyerPrice;
	private Long vendorPrice;
	private String vendorNum;
	private String info;
	private String buyer_master;
	private String vendor_master;
	public String getBuyer_master() {
		return buyer_master;
	}
	public void setBuyer_master(String buyer_master) {
		this.buyer_master = buyer_master;
	}
	public String getVendor_master() {
		return vendor_master;
	}
	public void setVendor_master(String vendor_master) {
		this.vendor_master = vendor_master;
	}
	public String getContractId() {
		return contractId;
	}
	public void setContractId(String contractId) {
		this.contractId = contractId;
	}
	public String getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(String buyerId) {
		this.buyerId = buyerId;
	}
	public String getVendorId() {
		return vendorId;
	}
	public void setVendorId(String vendorId) {
		this.vendorId = vendorId;
	}
	public String getBuyerComname() {
		return buyerComname;
	}
	public void setBuyerComname(String buyerComname) {
		this.buyerComname = buyerComname;
	}
	public String getVendorComname() {
		return vendorComname;
	}
	public void setVendorComname(String vendorComname) {
		this.vendorComname = vendorComname;
	}
	public String getWorkNum() {
		return workNum;
	}
	public void setWorkNum(String workNum) {
		this.workNum = workNum;
	}
	public String getMatNum() {
		return matNum;
	}
	public void setMatNum(String matNum) {
		this.matNum = matNum;
	}
	public Long getBuyerPrice() {
		return buyerPrice;
	}
	public void setBuyerPrice(Long buyerPrice) {
		this.buyerPrice = buyerPrice;
	}
	public Long getVendorPrice() {
		return vendorPrice;
	}
	public void setVendorPrice(Long vendorPrice) {
		this.vendorPrice = vendorPrice;
	}
	public String getVendorNum() {
		return vendorNum;
	}
	public void setVendorNum(String vendorNum) {
		this.vendorNum = vendorNum;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
}
