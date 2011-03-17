package org.eurekastreams.testing;

import java.util.Comparator;

import org.eurekastreams.commons.model.DomainEntity;

/**
 * Eurekastreams tests sometimes rely on the ids being returned in numerical order,
 * which is not the case for Oracle. This lets compare opertions sort the returned
 * id's properly for testing.
 * @author cm325
 * 
 * TODO
 *
 */
public class DomainEntityIdComparator implements Comparator<DomainEntity>{

	@Override
	public int compare(DomainEntity t1, DomainEntity t2){
		long id1 = t1.getId();
		long id2 = t2.getId();
		if( id1 > id2){
			return 1;
		} 
		else if( id1 < id2) {
			return -1;
		} 
		else {
			return 0;
		}
	}
}

