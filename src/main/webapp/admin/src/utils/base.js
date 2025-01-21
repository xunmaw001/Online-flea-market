const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm353i0/",
            name: "ssm353i0",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm353i0/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "基于HTML5的网上跳蚤市场"
        } 
    }
}
export default base
