
package acme.entities;

import java.util.Collection;

import javax.persistence.Entity;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Range;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Configuration extends DomainEntity {

	// Serialization identifier -----------------------------------------------

	private static final long	serialVersionUID	= 1L;

	// Attributes --------------------------------------------------------------

	@NotNull
	private Collection<String>	spamWords;

	@Range(min = 0, max = 1)
	@Digits(integer = 1, fraction = 2)
	private Double				spamThreshold;

	@NotNull
	private Collection<String>	activitySectors;

	/*
	 * @Transient
	 * public boolean isSpam(final String text) {
	 * boolean isSpam = false;
	 * 
	 * List<String> splitted = Arrays.asList(text.split("\\s|\\p{Punct}"));
	 * 
	 * splitted = splitted.stream().filter(s -> s != "").collect(Collectors.toList());
	 * 
	 * int n = splitted.size();
	 * int count = 0;
	 * 
	 * //Cuidado con el formato de entrada, ha de ser ,+espacio
	 * 
	 * String[] spam = this.spamWords.toLowerCase().split(",");
	 * 
	 * String lowerCaseString = text.toLowerCase().replaceAll("\\s+{2,}", " ");
	 * 
	 * for (String s : spam) {
	 * s = s.trim();
	 * count += org.apache.commons.lang3.StringUtils.countMatches(lowerCaseString, s);
	 * isSpam = count >= this.spamThreshold * n;
	 * if (isSpam) {
	 * break;
	 * }
	 * }
	 * 
	 * return isSpam;
	 * }
	 */

}
