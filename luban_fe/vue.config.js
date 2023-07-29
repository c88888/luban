module.exports = {
    devServer: {
        proxy: {
            // 这里的 /api 表示的意思是以 /dev 开头的才生效 ->刷下面的重点
            // axios.create 那里的baseURL 也配置成这个
            '/dev': {
                target: "http://192.168.1.111:8999",
                changOrigin: true,   //如果接口跨域这里就要这个参数配置
                pathRewrite: {
                    '^/dev': '/'  //实际的接口地址中是没这个api前缀的, 实际请求地址是 http://127.0.0.1:8000/
                }
            }
        }
    }


};
