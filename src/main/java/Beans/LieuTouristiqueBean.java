package Beans;

public class LieuTouristiqueBean {
	private int idLieuTouristique;
	private int idRegion;
	private String Nom_Lieu;
	private String Description_Lieu;
	private String img_Lieu;
	
	public int getIdLieuTouristique() {
		return idLieuTouristique;
	}
	public void setIdLieuTouristique(int idLieuTouristique) {
		this.idLieuTouristique = idLieuTouristique;
	}
	public int getIdRegion() {
		return idRegion;
	}
	public void setIdRegion(int idRegion) {
		this.idRegion = idRegion;
	}
	public String getNom_Lieu() {
		return Nom_Lieu;
	}
	public void setNom_Lieu(String nom_Lieu) {
		Nom_Lieu = nom_Lieu;
	}
	public String getDescription_Lieu() {
		return Description_Lieu;
	}
	public void setDescription_Lieu(String description_Lieu) {
		Description_Lieu = description_Lieu;
	}
	public String getImg_Lieu() {
		return img_Lieu;
	}
	public void setImg_Lieu(String img_Lieu) {
		this.img_Lieu = img_Lieu;
	}
	
}
