package action;

import Entity.Users;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import service.UsersService;

public class UsersAction extends ActionSupport implements ModelDriven<Users> {
    private static final long serialVersionUID = -6797327769546503535L;


    private String username;
    private String password;
    private Users users=new Users();
    private UsersService usersService;

    public void setUsers(Users users) {
        this.users = users;
    }

    public void setUsersService(UsersService usersService) {
        this.usersService = usersService;
    }


    @Override
    public String execute() throws Exception {
        //users.setPassword(password);
        //users.setUsername(username);
        System.out.println(users.getUsername());

        Users existUser =usersService.login(users);
        if(existUser==null){
            this.addActionError("password or username wrong");
            return INPUT;
        }
        else{
            ActionContext.getContext().getSession().put("existUser",existUser);
            return SUCCESS;

        }
    }

    @Override
    public Users getModel() {
        return users;
    }
}
