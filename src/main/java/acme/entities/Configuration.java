
package acme.entities;

import javax.persistence.Entity;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;

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

	@NotBlank
	private String				spamWords;

	@Range(min = 0, max = 1)
	@Digits(integer = 1, fraction = 3)
	private Double				spamThreshold;

	@NotBlank
	private String				activitySectors;

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
