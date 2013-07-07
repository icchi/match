workers = Worker.create([
  { 
    dept: 'A1', 
    org: 'ゲームカード株式会社', 
    name: '高畑 荘之輔', 
    sales_rep: '雪本 知香江', 
    confirmed_date: Date.current 
  }, { 
    dept: 'A1', 
    org: '株式会社システム建設', 
    name: '上坪 伝重', 
    sales_rep: '植吉 太二', 
    confirmed_date: Date.current 
  }, { 
    dept: 'B3', 
    org: '有限会社ユーテックティ', 
    name: '鹿真 己智代', 
    sales_rep: '植吉 太二', 
    confirmed_date: Date.current 
  }
])

projects = Project.create([
  { name: 'ダミーシステム開発', org: 'エアイーチタン有限会社' }, 
  { name: 'プロトタイプ作成', org: 'シイサービスエムエス株式会社' }, 
  { name: 'ゲームカード結合テスト', org: '静岡理工科大学' }
])

workers.first.assginments.create({ 
  project: projects.first, 
  start_date: Date.current.at_beginning_of_month.advance(months: -3), 
  end_date: Date.current.at_end_of_month.advance(months: 2)
})

workers.second.assginments.create([
  { 
    project: projects.first, 
    start_date: Date.current.at_beginning_of_month.advance(months: -3), 
    end_date: Date.current.at_end_of_month.advance(months: 0, days: -3) 
  }, { 
    project: projects.second, 
    start_date: Date.current.at_beginning_of_month.advance(months: 1, days: 5), 
    end_date: Date.current.at_end_of_month.advance(months: 5, days: -5) 
  }
])

workers.third.assginments.create({ 
  project: projects.third, 
  start_date: Date.current.at_beginning_of_month.advance(months: 2, days: 20), 
  end_date: Date.current.at_end_of_month.advance(months: 3)
})

