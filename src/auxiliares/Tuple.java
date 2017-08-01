package auxiliares;

public class Tuple {
	
	private String typeOrName;
	private String code;
	
	public Tuple(String typeOrName, String code){
		this.typeOrName = typeOrName;
		this.code = code;
	}

	public String getTypeOrName() {
		return typeOrName;
	}

	public void setTypeOrName(String typeOrName) {
		this.typeOrName = typeOrName;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	

}
