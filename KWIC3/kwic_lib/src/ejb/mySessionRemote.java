/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import javax.ejb.Remote;

/**
 *
 * @author cameron
 */
@Remote
public interface mySessionRemote {

    void setToDatabase(String input);

    String search(String s);
    
}
