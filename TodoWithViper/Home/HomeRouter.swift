struct HomeRouter {
    func navigateToDetail(presenter: HomePresenter) -> DetailView {
        let detailRouter = DetailRouter(homePresenter: presenter)
        let detailPresenter = DetailPresenter(router: detailRouter)
        return DetailView(presenter: detailPresenter)
    }
}
